import InitE.BackendStages.TargetChecks.Data1_202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_202_eq : LabToTarget.sectionLabels 71452 Reencode0_202.lines [] = (71596, localLabels1_202) := by
  with_unfolding_all rfl
#print axioms localLabels1_202_eq
end InitE.BackendStages.TargetChecks
