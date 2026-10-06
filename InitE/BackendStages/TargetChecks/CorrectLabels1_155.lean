import InitE.BackendStages.TargetChecks.CorrectLabels0_155
import InitE.BackendStages.TargetChecks.CorrectEncode0_155
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_155
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_155_eq : LabToTarget.sectionLabels 41384 Reencode0_155.lines [] = (41724, localLabels1_155) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 41384 41724 riscvConfig.encode
    Initial155.lines Reencode0_155.lines [] Reencode0_155_eq).trans
    (localLabels0_155_eq.trans (by kernel_rfl))
#print axioms localLabels1_155_eq
end InitE.BackendStages.TargetChecks.Correct
