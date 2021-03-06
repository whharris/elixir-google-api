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

defmodule GoogleApi.DFAReporting.V28.Model.Campaign do
  @moduledoc """
  Contains properties of a DCM campaign.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accountId",
    :"adBlockingConfiguration",
    :"additionalCreativeOptimizationConfigurations",
    :"advertiserGroupId",
    :"advertiserId",
    :"advertiserIdDimensionValue",
    :"archived",
    :"audienceSegmentGroups",
    :"billingInvoiceCode",
    :"clickThroughUrlSuffixProperties",
    :"comment",
    :"createInfo",
    :"creativeGroupIds",
    :"creativeOptimizationConfiguration",
    :"defaultClickThroughEventTagProperties",
    :"endDate",
    :"eventTagOverrides",
    :"externalId",
    :"id",
    :"idDimensionValue",
    :"kind",
    :"lastModifiedInfo",
    :"lookbackConfiguration",
    :"name",
    :"nielsenOcrEnabled",
    :"startDate",
    :"subaccountId",
    :"traffickerEmails"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Campaign do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"adBlockingConfiguration", :struct, GoogleApi.DFAReporting.V28.Model.AdBlockingConfiguration, options)
    |> deserialize(:"additionalCreativeOptimizationConfigurations", :list, GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration, options)
    |> deserialize(:"advertiserIdDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"audienceSegmentGroups", :list, GoogleApi.DFAReporting.V28.Model.AudienceSegmentGroup, options)
    |> deserialize(:"clickThroughUrlSuffixProperties", :struct, GoogleApi.DFAReporting.V28.Model.ClickThroughUrlSuffixProperties, options)
    |> deserialize(:"createInfo", :struct, GoogleApi.DFAReporting.V28.Model.LastModifiedInfo, options)
    |> deserialize(:"creativeOptimizationConfiguration", :struct, GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration, options)
    |> deserialize(:"defaultClickThroughEventTagProperties", :struct, GoogleApi.DFAReporting.V28.Model.DefaultClickThroughEventTagProperties, options)
    |> deserialize(:"endDate", :date, nil, options)
    |> deserialize(:"eventTagOverrides", :list, GoogleApi.DFAReporting.V28.Model.EventTagOverride, options)
    |> deserialize(:"idDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"lastModifiedInfo", :struct, GoogleApi.DFAReporting.V28.Model.LastModifiedInfo, options)
    |> deserialize(:"lookbackConfiguration", :struct, GoogleApi.DFAReporting.V28.Model.LookbackConfiguration, options)
    |> deserialize(:"startDate", :date, nil, options)
  end
end

