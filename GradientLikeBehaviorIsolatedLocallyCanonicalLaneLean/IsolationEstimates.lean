import canonicalLaneMathlib.AdmissibleClass
import GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientLikeBehaviorDefs

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure IsolationEstimatePackage where
  system : GradientSystem
  lowerGradientBound : ℝ
  lowerBoundPos : lowerGradientBound > 0
  gradientNormLowerBound : Prop
  noOtherCriticalPointsInRadius : Prop
  linearizationNondegenerate : Prop

structure IsolationEstimateEvidence (I : IsolationEstimatePackage) where
  gradientNormLowerBoundClosed : I.gradientNormLowerBound
  noOtherCriticalPointsInRadiusClosed : I.noOtherCriticalPointsInRadius
  linearizationNondegenerateClosed : I.linearizationNondegenerate

def IsolationEstimateClosed (I : IsolationEstimatePackage) : Prop :=
  I.gradientNormLowerBound ∧ I.noOtherCriticalPointsInRadius ∧ I.linearizationNondegenerate

theorem isolation_estimate_closed_from_evidence (I : IsolationEstimatePackage)
    (E : IsolationEstimateEvidence I) : IsolationEstimateClosed I := by
  exact And.intro E.gradientNormLowerBoundClosed
    (And.intro E.noOtherCriticalPointsInRadiusClosed E.linearizationNondegenerateClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse