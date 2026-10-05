import Tools.GenSmallStages
import InitE.SmallStages.Oracles310
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 310 InitE.WordStages.source310.2.1 InitE.WordStages.source310.2.2 InitE.SmallStages.Oracles310.oracle310
