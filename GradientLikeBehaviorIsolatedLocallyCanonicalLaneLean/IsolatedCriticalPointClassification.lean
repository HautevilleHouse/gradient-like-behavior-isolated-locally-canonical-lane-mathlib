import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.EnergyDecayEstimates

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure IsolatedCriticalPointClassificationPackage {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} {E : EnergyDecayEstimatesPackage L} where
  criticalPointType : String
  morseIndex : Nat
  localDynamicsClassified : Prop
  gradientLikeCohomology : Prop

structure IsolatedCriticalPointClassificationEvidence (C : IsolatedCriticalPointClassificationPackage) where
  localDynamicsClassifiedClosed : C.localDynamicsClassified
  gradientLikeCohomologyClosed : C.gradientLikeCohomology

def IsolatedCriticalPointClassificationClosed (C : IsolatedCriticalPointClassificationPackage) : Prop :=
  C.localDynamicsClassified ∧ C.gradientLikeCohomology

theorem isolated_critical_point_classification_closed_from_evidence
    (C : IsolatedCriticalPointClassificationPackage)
    (E : IsolatedCriticalPointClassificationEvidence C) :
    IsolatedCriticalPointClassificationClosed C := by
  exact And.intro E.localDynamicsClassifiedClosed E.gradientLikeCohomologyClosed

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
