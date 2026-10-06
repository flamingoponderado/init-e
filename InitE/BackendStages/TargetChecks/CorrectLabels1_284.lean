import InitE.BackendStages.TargetChecks.CorrectLabels0_284
import InitE.BackendStages.TargetChecks.CorrectEncode0_284
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_284_eq : LabToTarget.sectionLabels 186368 Reencode0_284.lines [] = (186652, localLabels1_284) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 186368 186652 riscvConfig.encode
    Initial284.lines Reencode0_284.lines [] Reencode0_284_eq).trans
    (localLabels0_284_eq.trans (by kernel_rfl))
#print axioms localLabels1_284_eq
end InitE.BackendStages.TargetChecks.Correct
