import InitE.BackendStages.TargetChecks.CorrectLabels0_520
import InitE.BackendStages.TargetChecks.CorrectEncode0_520
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_520_eq : LabToTarget.sectionLabels 366408 Reencode0_520.lines [] = (367468, localLabels1_520) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 366408 367468 riscvConfig.encode
    Initial520.lines Reencode0_520.lines [] Reencode0_520_eq).trans
    (localLabels0_520_eq.trans (by kernel_rfl))
#print axioms localLabels1_520_eq
end InitE.BackendStages.TargetChecks.Correct
