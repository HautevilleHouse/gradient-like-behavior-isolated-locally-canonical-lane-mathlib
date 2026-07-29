import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure IsolatedLocalBehaviorPackage where
  neighborhoodBasis : Prop
  localConvergenceToCritical : Prop
  isolationFromOtherCriticalPoints : Prop
  localLyapunovFunctionStrict : Prop

structure IsolatedLocalBehaviorEvidence (P : IsolatedLocalBehaviorPackage) where
  neighborhoodBasisClosed : P.neighborhoodBasis
  localConvergenceToCriticalClosed : P.localConvergenceToCritical
  isolationFromOtherCriticalPointsClosed : P.isolationFromOtherCriticalPoints
  localLyapunovFunctionStrictClosed : P.localLyapunovFunctionStrict

def IsolatedLocalBehaviorClosed (P : IsolatedLocalBehaviorPackage) : Prop :=
  P.neighborhoodBasis ∧ P.localConvergenceToCritical ∧
  P.isolationFromOtherCriticalPoints ∧ P.localLyapunovFunctionStrict

theorem isolated_local_behavior_closed_from_evidence
    (P : IsolatedLocalBehaviorPackage) (E : IsolatedLocalBehaviorEvidence P) :
    IsolatedLocalBehaviorClosed P := by
  exact And.intro E.neighborhoodBasisClosed
    (And.intro E.localConvergenceToCriticalClosed
      (And.intro E.isolationFromOtherCriticalPointsClosed
        E.localLyapunovFunctionStrictClosed))

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
