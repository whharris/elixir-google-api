# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1BETA4.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias GoogleApi.SQLAdmin.V1BETA4.Connection
  import GoogleApi.SQLAdmin.V1BETA4.RequestBuilder


  @doc """
  Retrieves an instance operation that has been performed on an instance.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1BETA4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - operation (String): Instance operation ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1BETA4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_operations_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1BETA4.Model.Operation.t} | {:error, Tesla.Env.t}
  def sql_operations_get(connection, project, operation, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/#{project}/operations/#{operation}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1BETA4.Model.Operation{})
  end

  @doc """
  Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1BETA4.Connection): Connection to server
  - project (String): Project ID of the project that contains the instance.
  - instance (String): Cloud SQL instance ID. This does not include the project ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of operations per response.
    - :page_token (String): A previously-returned page token representing part of the larger set of results to view.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1BETA4.Model.OperationsListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_operations_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.SQLAdmin.V1BETA4.Model.OperationsListResponse.t} | {:error, Tesla.Env.t}
  def sql_operations_list(connection, project, instance, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/projects/#{project}/operations")
    |> add_param(:query, :"instance", instance)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.SQLAdmin.V1BETA4.Model.OperationsListResponse{})
  end
end