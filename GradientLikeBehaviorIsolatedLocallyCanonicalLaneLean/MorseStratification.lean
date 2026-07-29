import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.IsolatedLocalBehavior

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure StratificationStructure where
  criticalLevels : List Nat
  localCriticalPointTypes : List String
  stabilityUnderPerturbation : Prop

structure StratificationEvidence (S : StratificationStructure) where
  criticalLevelsClosed : S.criticalLevels ≠ []
  localCriticalPointTypesClosed : S.localCriticalPointTypes ≠ []
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def StratificationClosed (S : StratificationStructure) : Prop :=
  S.criticalLevels ≠ [] ∧ S.localCriticalPointTypes ≠ [] ∧ S.stabilityUnderPerturbation

theorem stratification_closed_from_evidence (S : StratificationStructure)
    (E : StratificationEvidence S) : StratificationClosed S := by
  exact And.intro E.criticalLevelsClosed
    (And.intro E.localCriticalPointTypesClosed E.stabilityUnderPerturbationClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
