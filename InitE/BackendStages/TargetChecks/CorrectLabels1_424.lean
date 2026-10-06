import InitE.BackendStages.TargetChecks.CorrectLabels0_424
import InitE.BackendStages.TargetChecks.CorrectEncode0_424
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_424_eq : LabToTarget.sectionLabels 289256 Reencode0_424.lines [] = (289560, localLabels1_424) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 289256 289560 riscvConfig.encode
    Initial424.lines Reencode0_424.lines [] Reencode0_424_eq).trans
    (localLabels0_424_eq.trans (by kernel_rfl))
#print axioms localLabels1_424_eq
end InitE.BackendStages.TargetChecks.Correct
