class TopController < ApplicationController
  def index

    @results = RakutenWebService::Ichiba::Item.search({
            keyword: '獺祭',
            imageFlag: 1,
            hits: 2,
          })
  end
end
