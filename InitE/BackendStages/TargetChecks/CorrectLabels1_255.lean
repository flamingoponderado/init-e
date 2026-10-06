import InitE.BackendStages.TargetChecks.CorrectLabels0_255
import InitE.BackendStages.TargetChecks.CorrectEncode0_255
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_255_eq : LabToTarget.sectionLabels 143124 Reencode0_255.lines [] = (145548, localLabels1_255) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 143124 145548 riscvConfig.encode
    Initial255.lines Reencode0_255.lines [] Reencode0_255_eq).trans
    (localLabels0_255_eq.trans (by kernel_rfl))
#print axioms localLabels1_255_eq
end InitE.BackendStages.TargetChecks.Correct
