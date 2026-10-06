import Tools.GenSmallStages
import InitE.SmallStages.Oracles851
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 851 InitE.WordStages.source851.2.1 InitE.WordStages.source851.2.2 InitE.SmallStages.Oracles851.oracle851
