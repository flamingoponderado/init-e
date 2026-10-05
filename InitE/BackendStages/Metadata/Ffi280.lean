import InitE.BackendStages.Metadata.Data280
import InitE.BackendStages.Filtered280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis280_eq : ffiLines Filtered280.lines = localFfis280 := by
  with_unfolding_all rfl
theorem ffiStep280 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis280) : LabToTarget.findFfiNames (Filtered280 :: rest) = suffixFfis280 := by
  rw [findFfiNames_section, localFfis280_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep280
end InitE.BackendStages.Metadata
