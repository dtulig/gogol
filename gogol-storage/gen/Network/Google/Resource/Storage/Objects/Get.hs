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
-- Module      : Network.Google.Resource.Storage.Objects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves objects or their associated metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsGet@.
module Network.Google.Resource.Storage.Objects.Get
    (
    -- * REST Resource
      ObjectsGetResource

    -- * Creating a Request
    , objectsGet'
    , ObjectsGet'

    -- * Request Lenses
    , ogQuotaUser
    , ogIfMetagenerationMatch
    , ogIfGenerationNotMatch
    , ogPrettyPrint
    , ogIfGenerationMatch
    , ogUserIP
    , ogBucket
    , ogKey
    , ogIfMetagenerationNotMatch
    , ogObject
    , ogProjection
    , ogOAuthToken
    , ogGeneration
    , ogFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsGet@ which the
-- 'ObjectsGet'' request conforms to.
type ObjectsGetResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           Capture "object" Text :>
             QueryParam "ifMetagenerationMatch" Word64 :>
               QueryParam "ifGenerationNotMatch" Word64 :>
                 QueryParam "ifGenerationMatch" Word64 :>
                   QueryParam "ifMetagenerationNotMatch" Word64 :>
                     QueryParam "projection" StorageObjectsGetProjection
                       :>
                       QueryParam "generation" Word64 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Object
       :<|>
       "b" :>
         Capture "bucket" Text :>
           "o" :>
             Capture "object" Text :>
               QueryParam "ifMetagenerationMatch" Word64 :>
                 QueryParam "ifGenerationNotMatch" Word64 :>
                   QueryParam "ifGenerationMatch" Word64 :>
                     QueryParam "ifMetagenerationNotMatch" Word64 :>
                       QueryParam "projection" StorageObjectsGetProjection
                         :>
                         QueryParam "generation" Word64 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltMedia :>
                                         Get '[OctetStream] Body

-- | Retrieves objects or their associated metadata.
--
-- /See:/ 'objectsGet'' smart constructor.
data ObjectsGet' = ObjectsGet'
    { _ogQuotaUser                :: !(Maybe Text)
    , _ogIfMetagenerationMatch    :: !(Maybe Word64)
    , _ogIfGenerationNotMatch     :: !(Maybe Word64)
    , _ogPrettyPrint              :: !Bool
    , _ogIfGenerationMatch        :: !(Maybe Word64)
    , _ogUserIP                   :: !(Maybe Text)
    , _ogBucket                   :: !Text
    , _ogKey                      :: !(Maybe Key)
    , _ogIfMetagenerationNotMatch :: !(Maybe Word64)
    , _ogObject                   :: !Text
    , _ogProjection               :: !(Maybe StorageObjectsGetProjection)
    , _ogOAuthToken               :: !(Maybe OAuthToken)
    , _ogGeneration               :: !(Maybe Word64)
    , _ogFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogIfMetagenerationMatch'
--
-- * 'ogIfGenerationNotMatch'
--
-- * 'ogPrettyPrint'
--
-- * 'ogIfGenerationMatch'
--
-- * 'ogUserIP'
--
-- * 'ogBucket'
--
-- * 'ogKey'
--
-- * 'ogIfMetagenerationNotMatch'
--
-- * 'ogObject'
--
-- * 'ogProjection'
--
-- * 'ogOAuthToken'
--
-- * 'ogGeneration'
--
-- * 'ogFields'
objectsGet'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'object'
    -> ObjectsGet'
objectsGet' pOgBucket_ pOgObject_ =
    ObjectsGet'
    { _ogQuotaUser = Nothing
    , _ogIfMetagenerationMatch = Nothing
    , _ogIfGenerationNotMatch = Nothing
    , _ogPrettyPrint = True
    , _ogIfGenerationMatch = Nothing
    , _ogUserIP = Nothing
    , _ogBucket = pOgBucket_
    , _ogKey = Nothing
    , _ogIfMetagenerationNotMatch = Nothing
    , _ogObject = pOgObject_
    , _ogProjection = Nothing
    , _ogOAuthToken = Nothing
    , _ogGeneration = Nothing
    , _ogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' ObjectsGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration matches the given value.
ogIfMetagenerationMatch :: Lens' ObjectsGet' (Maybe Word64)
ogIfMetagenerationMatch
  = lens _ogIfMetagenerationMatch
      (\ s a -> s{_ogIfMetagenerationMatch = a})

-- | Makes the operation conditional on whether the object\'s generation does
-- not match the given value.
ogIfGenerationNotMatch :: Lens' ObjectsGet' (Maybe Word64)
ogIfGenerationNotMatch
  = lens _ogIfGenerationNotMatch
      (\ s a -> s{_ogIfGenerationNotMatch = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' ObjectsGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | Makes the operation conditional on whether the object\'s generation
-- matches the given value.
ogIfGenerationMatch :: Lens' ObjectsGet' (Maybe Word64)
ogIfGenerationMatch
  = lens _ogIfGenerationMatch
      (\ s a -> s{_ogIfGenerationMatch = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIP :: Lens' ObjectsGet' (Maybe Text)
ogUserIP = lens _ogUserIP (\ s a -> s{_ogUserIP = a})

-- | Name of the bucket in which the object resides.
ogBucket :: Lens' ObjectsGet' Text
ogBucket = lens _ogBucket (\ s a -> s{_ogBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' ObjectsGet' (Maybe Key)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | Makes the operation conditional on whether the object\'s current
-- metageneration does not match the given value.
ogIfMetagenerationNotMatch :: Lens' ObjectsGet' (Maybe Word64)
ogIfMetagenerationNotMatch
  = lens _ogIfMetagenerationNotMatch
      (\ s a -> s{_ogIfMetagenerationNotMatch = a})

-- | Name of the object.
ogObject :: Lens' ObjectsGet' Text
ogObject = lens _ogObject (\ s a -> s{_ogObject = a})

-- | Set of properties to return. Defaults to noAcl.
ogProjection :: Lens' ObjectsGet' (Maybe StorageObjectsGetProjection)
ogProjection
  = lens _ogProjection (\ s a -> s{_ogProjection = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' ObjectsGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
ogGeneration :: Lens' ObjectsGet' (Maybe Word64)
ogGeneration
  = lens _ogGeneration (\ s a -> s{_ogGeneration = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' ObjectsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

instance GoogleAuth ObjectsGet' where
        authKey = ogKey . _Just
        authToken = ogOAuthToken . _Just

instance GoogleRequest ObjectsGet' where
        type Rs ObjectsGet' = Object
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsGet'{..}
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
              _ogIfMetagenerationNotMatch
              _ogProjection
              _ogGeneration
              _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy ObjectsGetResource)
                      r
                      u

instance GoogleRequest (Download ObjectsGet') where
        type Rs (Download ObjectsGet') = Body
        request = requestWithRoute defReq storageURL
        requestWithRoute r u (Download ObjectsGet'{..})
          = go _ogBucket _ogObject _ogIfMetagenerationMatch
              _ogIfGenerationNotMatch
              _ogIfGenerationMatch
              _ogIfMetagenerationNotMatch
              _ogProjection
              _ogGeneration
              _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientWithRoute (Proxy :: Proxy ObjectsGetResource)
                      r
                      u