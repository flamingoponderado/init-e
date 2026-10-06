import InitE.BackendStages.TargetChecks.CorrectLabels0_130
import InitE.BackendStages.TargetChecks.CorrectEncode0_130
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_130_eq : LabToTarget.sectionLabels 26376 Reencode0_130.lines [] = (26548, localLabels1_130) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 26376 26548 riscvConfig.encode
    Initial130.lines Reencode0_130.lines [] Reencode0_130_eq).trans
    (localLabels0_130_eq.trans (by kernel_rfl))
#print axioms localLabels1_130_eq
end InitE.BackendStages.TargetChecks.Correct
