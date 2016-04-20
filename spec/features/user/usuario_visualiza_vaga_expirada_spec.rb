require 'rails_helper'

feature 'Usuario visualiza vaga expirada' do
  scenario 'successfully' do

    company = Company.create(name:    'Campus Code',
                            location: 'São Paulo',
                            mail:     'contato@campuscode.com.br',
                            phone:    '2369-3476')

    category = Category.create(name: 'Desenvolvedor')
    job = nil
    travel_to 90.days.ago do
      job = Job.create(title: 'Vaga de Dev',
                 description: 'Dev Junior Rails com ao menos um projeto',
                 location: 'São Paulo',
                 company: company,
                 category: category)

    end
    visit job_path(job)
    expect(page).to have_content "Vaga expirada!"
  end
end
