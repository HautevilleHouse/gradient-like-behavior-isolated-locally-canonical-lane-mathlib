import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientLikeFlow

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure LocalLinearizationPackage {G : GradientLikeFlowPackage} (L : GradientLikeFlowPackage) where
  linearizationExists : Prop
  hyperbolicCondition : Prop
  stableManifoldDimension : Nat
  unstableManifoldDimension : Nat
  localLinearizationAtCriticalPoint : Prop

structure LocalLinearizationEvidence {G : GradientLikeFlowPackage}
    {L : GradientLikeFlowPackage} (P : LocalLinearizationPackage L) where
  linearizationExistsClosed : P.linearizationExists
  hyperbolicConditionClosed : P.hyperbolicCondition
  localLinearizationAtCriticalPointClosed : P.localLinearizationAtCriticalPoint

def LocalLinearizationClosed {G : GradientLikeFlowPackage}
    {L : GradientLikeFlowPackage} (P : LocalLinearizationPackage L) : Prop :=
  P.linearizationExists ∧ P.hyperbolicCondition ∧ P.localLinearizationAtCriticalPoint

theorem local_linearization_closed_from_evidence {G : GradientLikeFlowPackage}
    {L : GradientLikeFlowPackage} (P : LocalLinearizationPackage L)
    (E : LocalLinearizationEvidence P) : LocalLinearizationClosed P := by
  exact And.intro E.linearizationExistsClosed
    (And.intro E.hyperbolicConditionClosed E.localLinearizationAtCriticalPointClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
