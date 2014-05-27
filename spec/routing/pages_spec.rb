describe PagesController do

  it 'routes to #home' do
    expect(get: '/').to route_to(
      controller: 'pages',
      action: 'home'
    )
  end
end
