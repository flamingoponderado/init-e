import InitE.BackendStages.TargetChecks.Data1_147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_147_eq : LabToTarget.sectionLabels 35384 Reencode0_147.lines [] = (36672, localLabels1_147) := by
  with_unfolding_all rfl
#print axioms localLabels1_147_eq
end InitE.BackendStages.TargetChecks
