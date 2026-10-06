import InitE.BackendStages.TargetChecks.CorrectLabels0_196
import InitE.BackendStages.TargetChecks.CorrectEncode0_196
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_196
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_196_eq : LabToTarget.sectionLabels 66192 Reencode0_196.lines [] = (66220, localLabels1_196) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 66192 66220 riscvConfig.encode
    Initial196.lines Reencode0_196.lines [] Reencode0_196_eq).trans
    (localLabels0_196_eq.trans (by kernel_rfl))
#print axioms localLabels1_196_eq
end InitE.BackendStages.TargetChecks.Correct
