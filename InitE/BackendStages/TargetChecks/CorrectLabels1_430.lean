import InitE.BackendStages.TargetChecks.CorrectLabels0_430
import InitE.BackendStages.TargetChecks.CorrectEncode0_430
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_430_eq : LabToTarget.sectionLabels 293296 Reencode0_430.lines [] = (293960, localLabels1_430) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 293296 293960 riscvConfig.encode
    Initial430.lines Reencode0_430.lines [] Reencode0_430_eq).trans
    (localLabels0_430_eq.trans (by kernel_rfl))
#print axioms localLabels1_430_eq
end InitE.BackendStages.TargetChecks.Correct
