import canonicalLaneMathlib.AdmissibleClass
import GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientLikeBehaviorDefs

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure LyapunovDecayPackage where
  system : GradientSystem
  decayRate : ℝ
  decayRatePos : decayRate > 0
  exponentialEstimate : Prop
  rateUniformOnBasin : Prop

structure LyapunovDecayEvidence (P : LyapunovDecayPackage) where
  exponentialEstimateClosed : P.exponentialEstimate
  rateUniformOnBasinClosed : P.rateUniformOnBasin

def LyapunovDecayClosed (P : LyapunovDecayPackage) : Prop :=
  P.exponentialEstimate ∧ P.rateUniformOnBasin

theorem lyapunov_decay_closed_from_evidence (P : LyapunovDecayPackage)
    (E : LyapunovDecayEvidence P) : LyapunovDecayClosed P := by
  exact And.intro E.exponentialEstimateClosed E.rateUniformOnBasinClosed

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse