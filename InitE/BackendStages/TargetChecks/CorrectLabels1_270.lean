import InitE.BackendStages.TargetChecks.CorrectLabels0_270
import InitE.BackendStages.TargetChecks.CorrectEncode0_270
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_270_eq : LabToTarget.sectionLabels 168228 Reencode0_270.lines [] = (168632, localLabels1_270) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 168228 168632 riscvConfig.encode
    Initial270.lines Reencode0_270.lines [] Reencode0_270_eq).trans
    (localLabels0_270_eq.trans (by kernel_rfl))
#print axioms localLabels1_270_eq
end InitE.BackendStages.TargetChecks.Correct
