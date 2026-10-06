import InitE.BackendStages.TargetChecks.CorrectLabels0_343
import InitE.BackendStages.TargetChecks.CorrectEncode0_343
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_343_eq : LabToTarget.sectionLabels 235296 Reencode0_343.lines [] = (235516, localLabels1_343) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 235296 235516 riscvConfig.encode
    Initial343.lines Reencode0_343.lines [] Reencode0_343_eq).trans
    (localLabels0_343_eq.trans (by kernel_rfl))
#print axioms localLabels1_343_eq
end InitE.BackendStages.TargetChecks.Correct
