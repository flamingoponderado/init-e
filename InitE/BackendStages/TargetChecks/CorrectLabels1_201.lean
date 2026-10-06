import InitE.BackendStages.TargetChecks.CorrectLabels0_201
import InitE.BackendStages.TargetChecks.CorrectEncode0_201
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_201_eq : LabToTarget.sectionLabels 70868 Reencode0_201.lines [] = (71452, localLabels1_201) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 70868 71452 riscvConfig.encode
    Initial201.lines Reencode0_201.lines [] Reencode0_201_eq).trans
    (localLabels0_201_eq.trans (by kernel_rfl))
#print axioms localLabels1_201_eq
end InitE.BackendStages.TargetChecks.Correct
