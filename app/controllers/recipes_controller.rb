RSpec.describe RecipesController, type: :request do
  describe "GET /recipes" do
    context "when user is not signed in" do
      it "redirects to the sign in page" do
        get "/recipes"
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when user is signed in" do
      let(:user) { create(:user) }
      let!(:recipe) { create(:recipe, user: user) }

      before { sign_in user }

      it "returns a success response" do
        get "/recipes"
        expect(response).to have_http_status(:ok)
      end

      it "displays the user's recipes" do
        get "/recipes"
        expect(response.body).to include(recipe.name)
      end
    end
  end

  describe "GET /recipes/:id" do
    context "when user is not signed in" do
      let(:recipe) { create(:recipe) }

      it "redirects to the sign in page" do
        get "/recipes/#{recipe.id}"
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when user is signed in" do
      let(:user) { create(:user) }
      let(:recipe) { create(:recipe, user: user) }

      before { sign_in user }

      it "returns a success response" do
        get "/recipes/#{recipe.id}"
        expect(response).to have_http_status(:ok)
      end

      it "displays the recipe's details" do
        get "/recipes/#{recipe.id}"
        expect(response.body).to include(recipe.name)
        expect(response.body).to include(recipe.description)
      end
    end
  end
end