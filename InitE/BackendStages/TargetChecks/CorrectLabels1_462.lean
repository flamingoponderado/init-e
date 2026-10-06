import InitE.BackendStages.TargetChecks.CorrectLabels0_462
import InitE.BackendStages.TargetChecks.CorrectEncode0_462
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_462_eq : LabToTarget.sectionLabels 331568 Reencode0_462.lines [] = (334872, localLabels1_462) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 331568 334872 riscvConfig.encode
    Initial462.lines Reencode0_462.lines [] Reencode0_462_eq).trans
    (localLabels0_462_eq.trans (by kernel_rfl))
#print axioms localLabels1_462_eq
end InitE.BackendStages.TargetChecks.Correct
