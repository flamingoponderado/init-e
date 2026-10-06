import InitE.BackendStages.TargetChecks.CorrectLabels0_256
import InitE.BackendStages.TargetChecks.CorrectEncode0_256
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_256_eq : LabToTarget.sectionLabels 145548 Reencode0_256.lines [] = (147348, localLabels1_256) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 145548 147348 riscvConfig.encode
    Initial256.lines Reencode0_256.lines [] Reencode0_256_eq).trans
    (localLabels0_256_eq.trans (by kernel_rfl))
#print axioms localLabels1_256_eq
end InitE.BackendStages.TargetChecks.Correct
