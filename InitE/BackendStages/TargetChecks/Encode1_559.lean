import InitE.BackendStages.TargetChecks.Data1_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_559_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 403256 riscvConfig.encode Reencode0_559.lines [] true = (Reencode1_559.lines, 403700, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_559_eq
end InitE.BackendStages.TargetChecks
