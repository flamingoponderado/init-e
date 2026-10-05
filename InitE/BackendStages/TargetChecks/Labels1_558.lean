import InitE.BackendStages.TargetChecks.Data1_558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_558_eq : LabToTarget.sectionLabels 402700 Reencode0_558.lines [] = (403256, localLabels1_558) := by
  with_unfolding_all rfl
#print axioms localLabels1_558_eq
end InitE.BackendStages.TargetChecks
