import canonicalLaneMathlib.AdmissibleClass
import GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientLikeBehaviorDefs

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure StableManifoldPackage where
  system : GradientSystem
  stableManifoldDimension : ℕ
  stableManifoldExists : Prop
  tangentSpaceCharacterization : Prop
  localAttractionRate : ℝ
  attractionRatePos : localAttractionRate > 0

structure StableManifoldEvidence (S : StableManifoldPackage) where
  stableManifoldExistsClosed : S.stableManifoldExists
  tangentSpaceCharacterizationClosed : S.tangentSpaceCharacterization
  attractionRatePosClosed : S.attractionRatePos

def StableManifoldClosed (S : StableManifoldPackage) : Prop :=
  S.stableManifoldExists ∧ S.tangentSpaceCharacterization ∧ S.attractionRatePos

theorem stable_manifold_closed_from_evidence (S : StableManifoldPackage)
    (E : StableManifoldEvidence S) : StableManifoldClosed S := by
  exact And.intro E.stableManifoldExistsClosed
    (And.intro E.tangentSpaceCharacterizationClosed E.attractionRatePosClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse