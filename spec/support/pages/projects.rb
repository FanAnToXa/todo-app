module Todo
  class ProjectsPage < SitePrism::Page
    set_url '#/projects'

    element :projects,                           '#projects'
    section :project_form, ProjectFormSection,   '#projects .project-form'
    sections :project_items, ProjectListSection, '#projects .project-item'
  end
end