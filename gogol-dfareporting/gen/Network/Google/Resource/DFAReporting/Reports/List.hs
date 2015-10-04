{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsList@.
module Network.Google.Resource.DFAReporting.Reports.List
    (
    -- * REST Resource
      ReportsListResource

    -- * Creating a Request
    , reportsList'
    , ReportsList'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIP
    , rProfileId
    , rSortOrder
    , rKey
    , rScope
    , rPageToken
    , rSortField
    , rOAuthToken
    , rMaxResults
    , rFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsList@ which the
-- 'ReportsList'' request conforms to.
type ReportsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "sortOrder"
             DfareportingReportsListSortOrder
             :>
             QueryParam "scope" Scope :>
               QueryParam "pageToken" Text :>
                 QueryParam "sortField"
                   DfareportingReportsListSortField
                   :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'reportsList'' smart constructor.
data ReportsList' = ReportsList'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIP      :: !(Maybe Text)
    , _rProfileId   :: !Int64
    , _rSortOrder   :: !DfareportingReportsListSortOrder
    , _rKey         :: !(Maybe Key)
    , _rScope       :: !Scope
    , _rPageToken   :: !(Maybe Text)
    , _rSortField   :: !DfareportingReportsListSortField
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rMaxResults  :: !(Maybe Int32)
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIP'
--
-- * 'rProfileId'
--
-- * 'rSortOrder'
--
-- * 'rKey'
--
-- * 'rScope'
--
-- * 'rPageToken'
--
-- * 'rSortField'
--
-- * 'rOAuthToken'
--
-- * 'rMaxResults'
--
-- * 'rFields'
reportsList'
    :: Int64 -- ^ 'profileId'
    -> ReportsList'
reportsList' pRProfileId_ =
    ReportsList'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rProfileId = pRProfileId_
    , _rSortOrder = DRLSODescending
    , _rKey = Nothing
    , _rScope = SMine
    , _rPageToken = Nothing
    , _rSortField = DRLSFLastModifiedTime
    , _rOAuthToken = Nothing
    , _rMaxResults = Nothing
    , _rFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' ReportsList' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' ReportsList' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' ReportsList' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | The DFA user profile ID.
rProfileId :: Lens' ReportsList' Int64
rProfileId
  = lens _rProfileId (\ s a -> s{_rProfileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
rSortOrder :: Lens' ReportsList' DfareportingReportsListSortOrder
rSortOrder
  = lens _rSortOrder (\ s a -> s{_rSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReportsList' (Maybe Key)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
rScope :: Lens' ReportsList' Scope
rScope = lens _rScope (\ s a -> s{_rScope = a})

-- | The value of the nextToken from the previous result page.
rPageToken :: Lens' ReportsList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The field by which to sort the list.
rSortField :: Lens' ReportsList' DfareportingReportsListSortField
rSortField
  = lens _rSortField (\ s a -> s{_rSortField = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' ReportsList' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Maximum number of results to return.
rMaxResults :: Lens' ReportsList' (Maybe Int32)
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReportsList' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth ReportsList' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest ReportsList' where
        type Rs ReportsList' = ReportList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsList'{..}
          = go _rProfileId (Just _rSortOrder) (Just _rScope)
              _rPageToken
              (Just _rSortField)
              _rMaxResults
              _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsListResource)
                      r
                      u