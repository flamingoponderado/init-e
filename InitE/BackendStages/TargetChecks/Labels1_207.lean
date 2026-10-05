import InitE.BackendStages.TargetChecks.Data1_207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_207_eq : LabToTarget.sectionLabels 73016 Reencode0_207.lines [] = (73304, localLabels1_207) := by
  with_unfolding_all rfl
#print axioms localLabels1_207_eq
end InitE.BackendStages.TargetChecks
