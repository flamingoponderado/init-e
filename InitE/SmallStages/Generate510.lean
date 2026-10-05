import Tools.GenSmallStages
import InitE.SmallStages.Oracles510
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 510 InitE.WordStages.source510.2.1 InitE.WordStages.source510.2.2 InitE.SmallStages.Oracles510.oracle510
