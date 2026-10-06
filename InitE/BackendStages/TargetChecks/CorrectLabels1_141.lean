import InitE.BackendStages.TargetChecks.CorrectLabels0_141
import InitE.BackendStages.TargetChecks.CorrectEncode0_141
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_141_eq : LabToTarget.sectionLabels 32248 Reencode0_141.lines [] = (32536, localLabels1_141) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 32248 32536 riscvConfig.encode
    Initial141.lines Reencode0_141.lines [] Reencode0_141_eq).trans
    (localLabels0_141_eq.trans (by kernel_rfl))
#print axioms localLabels1_141_eq
end InitE.BackendStages.TargetChecks.Correct
