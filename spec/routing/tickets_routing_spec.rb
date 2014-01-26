require "spec_helper"

describe TicketsController do
  describe "routing" do



    it "routes to #new" do
      get("/tickets/new").should route_to("tickets#new")
    end

    it "routes to #show" do
      get("/tickets/1").should route_to("tickets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tickets/1/edit").should route_to("tickets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tickets").should route_to("tickets#create")
    end

    it "routes to #update" do
      put("/tickets/1").should route_to("tickets#update", :id => "1")
    end

    it "routes to #own" do
      get("/tickets/1/own").should route_to("tickets#own", :ticket_id => "1")
    end

    it "routes to #reply" do
      post("/tickets/1/reply").should route_to("tickets#reply", :ticket_id => "1")
    end

    it "routes to #status" do
      get("/tickets/1/status").should route_to("tickets#status", :ticket_id => "1")
    end
  end
end
