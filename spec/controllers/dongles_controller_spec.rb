require 'spec_helper'

describe DonglesController do

  def mock_dongle(stubs={})
    @mock_dongle ||= mock_model(Dongle, stubs)
  end

  describe "GET index" do
    it "assigns all dongles as @dongles" do
      Dongle.stub(:find).with(:all).and_return([mock_dongle])
      get :index
      assigns[:dongles].should == [mock_dongle]
    end
  end

  describe "GET show" do
    it "assigns the requested dongle as @dongle" do
      Dongle.stub(:find).with("37").and_return(mock_dongle)
      get :show, :id => "37"
      assigns[:dongle].should equal(mock_dongle)
    end
  end

  describe "GET new" do
    it "assigns a new dongle as @dongle" do
      Dongle.stub(:new).and_return(mock_dongle)
      get :new
      assigns[:dongle].should equal(mock_dongle)
    end
  end

  describe "GET edit" do
    it "assigns the requested dongle as @dongle" do
      Dongle.stub(:find).with("37").and_return(mock_dongle)
      get :edit, :id => "37"
      assigns[:dongle].should equal(mock_dongle)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created dongle as @dongle" do
        Dongle.stub(:new).with({'these' => 'params'}).and_return(mock_dongle(:save => true))
        post :create, :dongle => {:these => 'params'}
        assigns[:dongle].should equal(mock_dongle)
      end

      it "redirects to the created dongle" do
        Dongle.stub(:new).and_return(mock_dongle(:save => true))
        post :create, :dongle => {}
        response.should redirect_to(dongle_url(mock_dongle))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dongle as @dongle" do
        Dongle.stub(:new).with({'these' => 'params'}).and_return(mock_dongle(:save => false))
        post :create, :dongle => {:these => 'params'}
        assigns[:dongle].should equal(mock_dongle)
      end

      it "re-renders the 'new' template" do
        Dongle.stub(:new).and_return(mock_dongle(:save => false))
        post :create, :dongle => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested dongle" do
        Dongle.should_receive(:find).with("37").and_return(mock_dongle)
        mock_dongle.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :dongle => {:these => 'params'}
      end

      it "assigns the requested dongle as @dongle" do
        Dongle.stub(:find).and_return(mock_dongle(:update_attributes => true))
        put :update, :id => "1"
        assigns[:dongle].should equal(mock_dongle)
      end

      it "redirects to the dongle" do
        Dongle.stub(:find).and_return(mock_dongle(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(dongle_url(mock_dongle))
      end
    end

    describe "with invalid params" do
      it "updates the requested dongle" do
        Dongle.should_receive(:find).with("37").and_return(mock_dongle)
        mock_dongle.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :dongle => {:these => 'params'}
      end

      it "assigns the dongle as @dongle" do
        Dongle.stub(:find).and_return(mock_dongle(:update_attributes => false))
        put :update, :id => "1"
        assigns[:dongle].should equal(mock_dongle)
      end

      it "re-renders the 'edit' template" do
        Dongle.stub(:find).and_return(mock_dongle(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested dongle" do
      Dongle.should_receive(:find).with("37").and_return(mock_dongle)
      mock_dongle.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the dongle list" do
      Dongle.stub(:find).and_return(mock_dongle(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(dongle_url)
    end
  end

end
