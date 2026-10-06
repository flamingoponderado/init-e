import InitE.BackendStages.TargetChecks.CorrectLabels0_440
import InitE.BackendStages.TargetChecks.CorrectEncode0_440
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_440_eq : LabToTarget.sectionLabels 299728 Reencode0_440.lines [] = (300380, localLabels1_440) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 299728 300380 riscvConfig.encode
    Initial440.lines Reencode0_440.lines [] Reencode0_440_eq).trans
    (localLabels0_440_eq.trans (by kernel_rfl))
#print axioms localLabels1_440_eq
end InitE.BackendStages.TargetChecks.Correct
