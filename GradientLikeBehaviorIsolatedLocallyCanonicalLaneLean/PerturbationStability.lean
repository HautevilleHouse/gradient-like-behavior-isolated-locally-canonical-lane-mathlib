import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.IsolatedCriticalPointClassification

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure PerturbationStabilityPackage {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} {E : EnergyDecayEstimatesPackage L}
    {C : IsolatedCriticalPointClassificationPackage} where
  perturbationFamily : Type u
  epsilonSmall : ℝ
  persistenceOfStructure : Prop
  localStructuralStability : Prop
  localBehaviorPreserved : Prop

structure PerturbationStabilityEvidence (P : PerturbationStabilityPackage) where
  persistenceOfStructureClosed : P.persistenceOfStructure
  localStructuralStabilityClosed : P.localStructuralStability
  localBehaviorPreservedClosed : P.localBehaviorPreserved

def PerturbationStabilityClosed (P : PerturbationStabilityPackage) : Prop :=
  P.persistenceOfStructure ∧ P.localStructuralStability ∧ P.localBehaviorPreserved

theorem perturbation_stability_closed_from_evidence (P : PerturbationStabilityPackage)
    (E : PerturbationStabilityEvidence P) : PerturbationStabilityClosed P := by
  exact And.intro E.persistenceOfStructureClosed
    (And.intro E.localStructuralStabilityClosed E.localBehaviorPreservedClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
