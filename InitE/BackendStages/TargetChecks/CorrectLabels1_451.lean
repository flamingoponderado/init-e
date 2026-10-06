import InitE.BackendStages.TargetChecks.CorrectLabels0_451
import InitE.BackendStages.TargetChecks.CorrectEncode0_451
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_451_eq : LabToTarget.sectionLabels 305700 Reencode0_451.lines [] = (307500, localLabels1_451) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 305700 307500 riscvConfig.encode
    Initial451.lines Reencode0_451.lines [] Reencode0_451_eq).trans
    (localLabels0_451_eq.trans (by kernel_rfl))
#print axioms localLabels1_451_eq
end InitE.BackendStages.TargetChecks.Correct
