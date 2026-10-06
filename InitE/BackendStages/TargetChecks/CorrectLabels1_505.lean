import InitE.BackendStages.TargetChecks.CorrectLabels0_505
import InitE.BackendStages.TargetChecks.CorrectEncode0_505
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_505_eq : LabToTarget.sectionLabels 353468 Reencode0_505.lines [] = (354340, localLabels1_505) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 353468 354340 riscvConfig.encode
    Initial505.lines Reencode0_505.lines [] Reencode0_505_eq).trans
    (localLabels0_505_eq.trans (by kernel_rfl))
#print axioms localLabels1_505_eq
end InitE.BackendStages.TargetChecks.Correct
