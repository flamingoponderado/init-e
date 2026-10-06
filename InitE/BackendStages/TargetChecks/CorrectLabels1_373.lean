import InitE.BackendStages.TargetChecks.CorrectLabels0_373
import InitE.BackendStages.TargetChecks.CorrectEncode0_373
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_373_eq : LabToTarget.sectionLabels 257720 Reencode0_373.lines [] = (257744, localLabels1_373) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 257720 257744 riscvConfig.encode
    Initial373.lines Reencode0_373.lines [] Reencode0_373_eq).trans
    (localLabels0_373_eq.trans (by kernel_rfl))
#print axioms localLabels1_373_eq
end InitE.BackendStages.TargetChecks.Correct
