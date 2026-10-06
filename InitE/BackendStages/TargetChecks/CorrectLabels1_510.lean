import InitE.BackendStages.TargetChecks.CorrectLabels0_510
import InitE.BackendStages.TargetChecks.CorrectEncode0_510
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_510_eq : LabToTarget.sectionLabels 358472 Reencode0_510.lines [] = (359344, localLabels1_510) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 358472 359344 riscvConfig.encode
    Initial510.lines Reencode0_510.lines [] Reencode0_510_eq).trans
    (localLabels0_510_eq.trans (by kernel_rfl))
#print axioms localLabels1_510_eq
end InitE.BackendStages.TargetChecks.Correct
