import InitE.BackendStages.TargetChecks.Data1_4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_4_eq : LabToTarget.sectionLabels 812 Reencode0_4.lines [] = (864, localLabels1_4) := by
  with_unfolding_all rfl
#print axioms localLabels1_4_eq
end InitE.BackendStages.TargetChecks
