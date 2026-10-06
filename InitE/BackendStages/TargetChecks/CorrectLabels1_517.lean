import InitE.BackendStages.TargetChecks.CorrectLabels0_517
import InitE.BackendStages.TargetChecks.CorrectEncode0_517
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_517
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_517_eq : LabToTarget.sectionLabels 364296 Reencode0_517.lines [] = (365056, localLabels1_517) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 364296 365056 riscvConfig.encode
    Initial517.lines Reencode0_517.lines [] Reencode0_517_eq).trans
    (localLabels0_517_eq.trans (by kernel_rfl))
#print axioms localLabels1_517_eq
end InitE.BackendStages.TargetChecks.Correct
