import InitE.BackendStages.Metadata.Data761
import InitE.BackendStages.Filtered761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis761_eq : ffiLines Filtered761.lines = localFfis761 := by
  with_unfolding_all rfl
theorem ffiStep761 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis761) : LabToTarget.findFfiNames (Filtered761 :: rest) = suffixFfis761 := by
  rw [findFfiNames_section, localFfis761_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep761
end InitE.BackendStages.Metadata
