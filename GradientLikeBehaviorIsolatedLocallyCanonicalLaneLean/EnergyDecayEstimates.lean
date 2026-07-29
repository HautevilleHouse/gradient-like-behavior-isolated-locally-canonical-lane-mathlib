import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.LocalLinearization

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure EnergyDecayEstimatesPackage {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} where
  lyapunovFunction : Type u
  dissipationRate : Prop
  exponentialDecay : Prop
  basinOfAttraction : Prop

structure EnergyDecayEstimatesEvidence {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} (E : EnergyDecayEstimatesPackage L) where
  lyapunovFunctionDefined : True
  dissipationRateClosed : E.dissipationRate
  exponentialDecayClosed : E.exponentialDecay
  basinOfAttractionClosed : E.basinOfAttraction

def EnergyDecayEstimatesClosed {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} (E : EnergyDecayEstimatesPackage L) : Prop :=
  E.dissipationRate ∧ E.exponentialDecay ∧ E.basinOfAttraction

theorem energy_decay_estimates_closed_from_evidence {G : GradientLikeFlowPackage}
    {L : LocalLinearizationPackage G} (E : EnergyDecayEstimatesPackage L)
    (Ev : EnergyDecayEstimatesEvidence E) : EnergyDecayEstimatesClosed E := by
  exact And.intro Ev.dissipationRateClosed
    (And.intro Ev.exponentialDecayClosed Ev.basinOfAttractionClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
