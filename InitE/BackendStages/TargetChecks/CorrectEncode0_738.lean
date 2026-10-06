import InitE.BackendStages.TargetChecks.CorrectData0_738
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem Reencode0_738_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 725792 riscvConfig.encode Initial738.lines [] true = (Reencode0_738.lines, 726356, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_738_eq
end InitE.BackendStages.TargetChecks.Correct
