import InitE.BackendStages.TargetChecks.CorrectLabels0_171
import InitE.BackendStages.TargetChecks.CorrectEncode0_171
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_171_eq : LabToTarget.sectionLabels 52784 Reencode0_171.lines [] = (53268, localLabels1_171) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 52784 53268 riscvConfig.encode
    Initial171.lines Reencode0_171.lines [] Reencode0_171_eq).trans
    (localLabels0_171_eq.trans (by kernel_rfl))
#print axioms localLabels1_171_eq
end InitE.BackendStages.TargetChecks.Correct
