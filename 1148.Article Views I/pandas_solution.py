import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    output = pd.DataFrame(pd.unique(views[views['author_id']==views['viewer_id']]['author_id']),columns=['id'])
    output.sort_values(by='id',inplace=True)
    return output
    
