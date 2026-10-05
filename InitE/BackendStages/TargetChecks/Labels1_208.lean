import InitE.BackendStages.TargetChecks.Data1_208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_208_eq : LabToTarget.sectionLabels 73304 Reencode0_208.lines [] = (73620, localLabels1_208) := by
  with_unfolding_all rfl
#print axioms localLabels1_208_eq
end InitE.BackendStages.TargetChecks
