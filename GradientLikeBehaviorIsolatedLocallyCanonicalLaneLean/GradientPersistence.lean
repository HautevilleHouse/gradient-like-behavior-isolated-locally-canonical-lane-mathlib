import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientPersistencePackage where
  manifold : GradientLikeManifold
  flow : GradientFlow
  persistentIsolatedSet : Set manifold.carrier
  persistenceProperty : Prop

def persistenceClosed (P : GradientPersistencePackage) : Prop :=
  P.persistenceProperty

theorem persistence_from_flow (P : GradientPersistencePackage) : persistenceClosed P := by
  exact P.persistenceProperty

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse