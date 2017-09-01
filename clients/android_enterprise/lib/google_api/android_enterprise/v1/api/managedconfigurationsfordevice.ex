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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Managedconfigurationsfordevice do
  @moduledoc """
  API calls for all endpoints tagged `Managedconfigurationsfordevice`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Removes a per-device managed configuration for an app for the specified device.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - managed_configuration_for_device_id (String): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_managedconfigurationsfordevice_delete(connection, enterprise_id, user_id, device_id, managed_configuration_for_device_id, opts \\ []) do
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
    |> method(:delete)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/managedConfigurationsForDevice/#{managed_configuration_for_device_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves details of a per-device managed configuration.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - managed_configuration_for_device_id (String): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t} | {:error, Tesla.Env.t}
  def androidenterprise_managedconfigurationsfordevice_get(connection, enterprise_id, user_id, device_id, managed_configuration_for_device_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/managedConfigurationsForDevice/#{managed_configuration_for_device_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{})
  end

  @doc """
  Lists all the per-device managed configurations for the specified device. Only the ID is set.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_managedconfigurationsfordevice_list(connection, enterprise_id, user_id, device_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/managedConfigurationsForDevice")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ManagedConfigurationsForDeviceListResponse{})
  end

  @doc """
  Adds or updates a per-device managed configuration for an app for the specified device. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - managed_configuration_for_device_id (String): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ManagedConfiguration): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_patch(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t} | {:error, Tesla.Env.t}
  def androidenterprise_managedconfigurationsfordevice_patch(connection, enterprise_id, user_id, device_id, managed_configuration_for_device_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/managedConfigurationsForDevice/#{managed_configuration_for_device_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{})
  end

  @doc """
  Adds or updates a per-device managed configuration for an app for the specified device.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - managed_configuration_for_device_id (String): The ID of the managed configuration (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ManagedConfiguration): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_managedconfigurationsfordevice_update(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration.t} | {:error, Tesla.Env.t}
  def androidenterprise_managedconfigurationsfordevice_update(connection, enterprise_id, user_id, device_id, managed_configuration_for_device_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/managedConfigurationsForDevice/#{managed_configuration_for_device_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration{})
  end
end