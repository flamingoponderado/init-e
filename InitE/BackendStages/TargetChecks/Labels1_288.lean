import InitE.BackendStages.TargetChecks.Data1_288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_288_eq : LabToTarget.sectionLabels 192340 Reencode0_288.lines [] = (192360, localLabels1_288) := by
  with_unfolding_all rfl
#print axioms localLabels1_288_eq
end InitE.BackendStages.TargetChecks
