import InitE.BackendStages.TargetChecks.Data1_683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_683_eq : LabToTarget.sectionLabels 602020 Reencode0_683.lines [] = (602044, localLabels1_683) := by
  with_unfolding_all rfl
#print axioms localLabels1_683_eq
end InitE.BackendStages.TargetChecks
