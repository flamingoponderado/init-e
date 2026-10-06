import InitE.BackendStages.TargetChecks.CorrectLabels0_335
import InitE.BackendStages.TargetChecks.CorrectEncode0_335
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_335_eq : LabToTarget.sectionLabels 228784 Reencode0_335.lines [] = (232164, localLabels1_335) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 228784 232164 riscvConfig.encode
    Initial335.lines Reencode0_335.lines [] Reencode0_335_eq).trans
    (localLabels0_335_eq.trans (by kernel_rfl))
#print axioms localLabels1_335_eq
end InitE.BackendStages.TargetChecks.Correct
