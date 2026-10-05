import InitE.BackendStages.TargetChecks.Data1_424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_424_eq : LabToTarget.sectionLabels 289256 Reencode0_424.lines [] = (289560, localLabels1_424) := by
  with_unfolding_all rfl
#print axioms localLabels1_424_eq
end InitE.BackendStages.TargetChecks
